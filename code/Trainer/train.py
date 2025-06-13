from Trainer import Trainer

for layer in ["L1U","L1F","L3m","L3p","L4m","L4p"]:
    trainer_x = Trainer("config.json",layer,"x")
    trainer_x.train()
    trainer_x.test()
    trainer_x.visualize()

    trainer_y = Trainer("config.json",layer,"y")
    trainer_y.train()
    trainer_y.test()
    trainer_y.visualize()
