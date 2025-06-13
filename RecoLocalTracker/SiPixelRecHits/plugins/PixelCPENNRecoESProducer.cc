#include "RecoLocalTracker/SiPixelRecHits/interface/PixelCPETemplateReco.h"
#include "RecoLocalTracker/Records/interface/TkPixelCPERecord.h"
#include "RecoLocalTracker/ClusterParameterEstimator/interface/PixelClusterParameterEstimator.h"
#include "MagneticField/Engine/interface/MagneticField.h"
#include "MagneticField/Records/interface/IdealMagneticFieldRecord.h"
#include "Geometry/TrackerGeometryBuilder/interface/TrackerGeometry.h"
#include "Geometry/Records/interface/TrackerDigiGeometryRecord.h"
#include "Geometry/Records/interface/TrackerTopologyRcd.h"
#include "DataFormats/TrackerCommon/interface/TrackerTopology.h"
#include "CondFormats/DataRecord/interface/SiPixelGenErrorDBObjectRcd.h"

#include "FWCore/Framework/interface/EventSetup.h"
#include "FWCore/Framework/interface/ESHandle.h"
#include "FWCore/Framework/interface/ModuleFactory.h"
#include "FWCore/Framework/interface/ESProducer.h"
#include "FWCore/Framework/interface/Event.h"
#include "FWCore/Framework/interface/Frameworkfwd.h"
#include "FWCore/Framework/interface/MakerMacros.h"
#include "FWCore/Framework/interface/stream/EDProducer.h"
#include "FWCore/MessageLogger/interface/MessageLogger.h"
#include "FWCore/ParameterSet/interface/ConfigurationDescriptions.h"
#include "FWCore/ParameterSet/interface/ParameterSetDescription.h"
#include "FWCore/ParameterSet/interface/PluginDescription.h"

#include "PhysicsTools/TensorFlow//interface/TfGraphRecord.h"
#include "PhysicsTools/TensorFlow/interface/TensorFlow.h"
#include "PhysicsTools/TensorFlow/interface/TfGraphDefWrapper.h"
#include "RecoLocalTracker/SiPixelRecHits/interface/PixelCPENNReco.h"


#include <string>
#include <memory>

class PixelCPENNRecoESProducer : public edm::ESProducer {

public:
  PixelCPENNRecoESProducer(const edm::ParameterSet& p);
  //~PixelCPENNRecoESProducer() override;
  std::unique_ptr<PixelClusterParameterEstimator> produce(const TkPixelCPERecord& );
  static void fillDescriptions(edm::ConfigurationDescriptions& descriptions);

private:
  edm::ESGetToken<MagneticField, IdealMagneticFieldRecord> magfieldToken_;
  edm::ESGetToken<TrackerGeometry, TrackerDigiGeometryRecord> pDDToken_;
  edm::ESGetToken<TrackerTopology, TrackerTopologyRcd> hTTToken_;
  edm::ESGetToken<SiPixelLorentzAngle, SiPixelLorentzAngleRcd> lorentzAngleToken_;
  edm::ESGetToken<SiPixelTemplateDBObject, SiPixelTemplateDBObjectESProducerRcd> templateDBobjectToken_;
  edm::ESGetToken<SiPixelGenErrorDBObject, SiPixelGenErrorDBObjectRcd> genErrorDBObjectToken_;

  std::string tfDnnLabel_L1U_x, tfDnnLabel_L1F_x, tfDnnLabel_L2new_x, tfDnnLabel_L2old_x, tfDnnLabel_L3m_x, tfDnnLabel_L3p_x, tfDnnLabel_L4m_x, tfDnnLabel_L4p_x;
  std::string tfDnnLabel_L1U_y, tfDnnLabel_L1F_y, tfDnnLabel_L2new_y, tfDnnLabel_L2old_y, tfDnnLabel_L3m_y, tfDnnLabel_L3p_y, tfDnnLabel_L4m_y, tfDnnLabel_L4p_y;
  std::vector<std::string> tfDnnLabels_x, tfDnnLabels_y;
  std::vector<edm::ESGetToken<TfGraphDefWrapper, TfGraphRecord>> tfDnnTokens_x, tfDnnTokens_y;
  
  std::vector<const tensorflow::Session *> sessions_x; 
  std::vector<const tensorflow::Session *> sessions_y;


  edm::ParameterSet pset_;
  bool doLorentzFromAlignment_;
  bool useLAFromDB_;
  int i;
  //const std::string filename_;
};

using namespace edm;

PixelCPENNRecoESProducer::PixelCPENNRecoESProducer(const edm::ParameterSet& p) {
//  tfDnnToken_(esConsumes(edm::ESInputTag("", tfDnnLabel_))) {
  std::string myname = p.getParameter<std::string>("ComponentName");

  // tfDnnLabel_L1U_x = p.getParameter<std::string>("tfDnnLabel_L1U_x");
  // tfDnnLabel_L1F_x = p.getParameter<std::string>("tfDnnLabel_L1F_x");
  // tfDnnLabel_L2new_x = p.getParameter<std::string>("tfDnnLabel_L2new_x");
  // tfDnnLabel_L2old_x = p.getParameter<std::string>("tfDnnLabel_L2old_x");
  // tfDnnLabel_L1U_y = p.getParameter<std::string>("tfDnnLabel_L1U_y");
  // tfDnnLabel_L1F_y = p.getParameter<std::string>("tfDnnLabel_L1F_y");
  // tfDnnLabel_L2new_y = p.getParameter<std::string>("tfDnnLabel_L2new_y");
  // tfDnnLabel_L2old_y = p.getParameter<std::string>("tfDnnLabel_L2old_y");

  tfDnnLabels_x.push_back(p.getParameter<std::string>("tfDnnLabel_L1U_x"));
  tfDnnLabels_x.push_back(p.getParameter<std::string>("tfDnnLabel_L1F_x"));
  tfDnnLabels_x.push_back(p.getParameter<std::string>("tfDnnLabel_L2new_x"));
  tfDnnLabels_x.push_back(p.getParameter<std::string>("tfDnnLabel_L2old_x"));
  tfDnnLabels_x.push_back(p.getParameter<std::string>("tfDnnLabel_L3m_x"));
  tfDnnLabels_x.push_back(p.getParameter<std::string>("tfDnnLabel_L3p_x"));
  tfDnnLabels_x.push_back(p.getParameter<std::string>("tfDnnLabel_L4m_x"));
  tfDnnLabels_x.push_back(p.getParameter<std::string>("tfDnnLabel_L4p_x"));

  tfDnnLabels_y.push_back(p.getParameter<std::string>("tfDnnLabel_L1U_y"));
  tfDnnLabels_y.push_back(p.getParameter<std::string>("tfDnnLabel_L1F_y"));
  tfDnnLabels_y.push_back(p.getParameter<std::string>("tfDnnLabel_L2new_y"));
  tfDnnLabels_y.push_back(p.getParameter<std::string>("tfDnnLabel_L2old_y"));
  tfDnnLabels_y.push_back(p.getParameter<std::string>("tfDnnLabel_L3m_y"));
  tfDnnLabels_y.push_back(p.getParameter<std::string>("tfDnnLabel_L3p_y"));
  tfDnnLabels_y.push_back(p.getParameter<std::string>("tfDnnLabel_L4m_y"));
  tfDnnLabels_y.push_back(p.getParameter<std::string>("tfDnnLabel_L4p_y"));

  useLAFromDB_ = true;
  doLorentzFromAlignment_ = p.getParameter<bool>("doLorentzFromAlignment");
  pset_ = p;
  auto c = setWhatProduced(this, myname);
  magfieldToken_ = c.consumes();
  pDDToken_ = c.consumes();
  hTTToken_ = c.consumes();
  genErrorDBObjectToken_ = c.consumes();
  //for(i = 0; i < int(tfDnnLabel_x.size()); i++){
  //  tfDnnToken_x.push_back(c.consumes<TfGraphDefWrapper, TfGraphRecord>(edm::ESInputTag("", tfDnnLabel_x[i])));
  //  tfDnnToken_y.push_back(c.consumes<TfGraphDefWrapper, TfGraphRecord>(edm::ESInputTag("", tfDnnLabel_y[i])));
  //}
  for (auto label: tfDnnLabels_x) tfDnnTokens_x.emplace_back(c.consumes(edm::ESInputTag("", label)));
  for (auto label: tfDnnLabels_y) tfDnnTokens_y.emplace_back(c.consumes(edm::ESInputTag("", label)));
  //tfDnnToken_x = c.consumes<std::vector<TfGraphDefWrapper, TfGraphRecord>>(edm::ESInputTag("", tfDnnLabel_x))
  //tfDnnToken_y = c.consumes<std::vector<TfGraphDefWrapper, TfGraphRecord>>(edm::ESInputTag("", tfDnnLabel_y))
  if (useLAFromDB_ || doLorentzFromAlignment_) {
   char const* laLabel = doLorentzFromAlignment_ ? "fromAlignment" : "";
    lorentzAngleToken_ = c.consumes(edm::ESInputTag("", laLabel));
  }
}

//PixelCPENNRecoESProducer::~PixelCPENNRecoESProducer() {}

std::unique_ptr<PixelClusterParameterEstimator> PixelCPENNRecoESProducer::produce(
    const TkPixelCPERecord& iRecord) {
  // Normal, default LA is used in case of template failure, load it unless
  // turned off
  // if turned off, null is ok, becomes zero
  //auto* graph = tensorflow::loadGraphDef(filename_);

  const SiPixelLorentzAngle* lorentzAngleProduct = nullptr;
  if (useLAFromDB_ || doLorentzFromAlignment_) {
    lorentzAngleProduct = &iRecord.get(lorentzAngleToken_);
  }
  //const SiPixelGenErrorDBObject* genErrorDBObjectProduct = nullptr;
  //const tensorflow::Session* session = nullptr;
  //for(i = 0; i < int(tfDnnLabel_x.size()); i++){
  //  sessions_x.push_back(iRecord.get(tfDnnToken_x[i]).getSession());
  //  sessions_y.push_back(iRecord.get(tfDnnToken_y[i]).getSession());
  //}
  //tensorflow::Options options{tensorflow::Backend::cuda};
  for(auto token : tfDnnTokens_x) sessions_x.emplace_back(iRecord.get(token).getSession());
  for(auto token : tfDnnTokens_y) sessions_y.emplace_back(iRecord.get(token).getSession());

  return std::make_unique<PixelCPENNReco>(pset_,
                                                &iRecord.get(magfieldToken_),
                                                iRecord.get(pDDToken_),
                                                iRecord.get(hTTToken_),
                                                lorentzAngleProduct,
                                                &iRecord.get(genErrorDBObjectToken_),
                                                //iRecord.getData(tfDnnToken_).getSession()
                                                sessions_x,
                                                sessions_y);
}

void PixelCPENNRecoESProducer::fillDescriptions(edm::ConfigurationDescriptions& descriptions) {
  edm::ParameterSetDescription desc;
  // std::vector<std::string> NNCPE_x = {"L1U_x","L1F_x","L2old_x","L2new_x","L3m_x","L3p_x","L4m_x","L4p_x"};
  // std::vector<std::string> NNCPE_y = {"L1U_y","L1F_y","L2old_y","L2new_y","L3m_y","L3p_y","L4m_y","L4p_y"};
  // from PixelCPEBase
  PixelCPEBase::fillPSetDescription(desc);

  // from PixelCPETemplateReco
  PixelCPETemplateReco::fillPSetDescription(desc);
  PixelCPENNReco::fillPSetDescription(desc);
  //PixelCPEGenericBase::fillPSetDescription(desc);
  // specific to PixelCPENNRecoESProducer
  desc.add<std::string>("ComponentName", "PixelCPENNReco");

  desc.add<std::string>("tfDnnLabel_L1U_x", "L1U_x");
  desc.add<std::string>("tfDnnLabel_L1F_x", "L1F_x"); 
  desc.add<std::string>("tfDnnLabel_L2new_x", "L2new_x");
  desc.add<std::string>("tfDnnLabel_L2old_x", "L2old_x");
  desc.add<std::string>("tfDnnLabel_L3m_x", "L3m_x");
  desc.add<std::string>("tfDnnLabel_L3p_x", "L3p_x");  
  desc.add<std::string>("tfDnnLabel_L4m_x", "L4m_x");
  desc.add<std::string>("tfDnnLabel_L4p_x", "L4p_x");  

  desc.add<std::string>("tfDnnLabel_L1U_y", "L1U_y");
  desc.add<std::string>("tfDnnLabel_L1F_y", "L1F_y"); 
  desc.add<std::string>("tfDnnLabel_L2new_y", "L2new_y");
  desc.add<std::string>("tfDnnLabel_L2old_y", "L2old_y");
  desc.add<std::string>("tfDnnLabel_L3m_y", "L3m_y");
  desc.add<std::string>("tfDnnLabel_L3p_y", "L3p_y");
  desc.add<std::string>("tfDnnLabel_L4m_y", "L4m_y");
  desc.add<std::string>("tfDnnLabel_L4p_y", "L4p_y");    

  descriptions.add("_NN_default",desc);

          
}

DEFINE_FWK_EVENTSETUP_MODULE(PixelCPENNRecoESProducer);
