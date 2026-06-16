start=$(date +%s)
cd .. &&

python3 FedAverage.py --data='cifar10' --nclient=10 --nclass=10 --ncpc=10 --model='MobileNetV3Small' --mode='LDP' --round=20 --epsilon=2 --sr=1 --lr=5e-2 --flr=1e-1 --physical_bs=3 --E=1
python FedAverage.py --data='cifar10' --nclient=10 --nclass=10 --ncpc=10 --model='MobileNetV3Small' --mode='LDP' --round=20 --epsilon=4 --sr=1 --lr=5e-2 --flr=1e-1 --physical_bs=3 --E=1
python FedAverage.py --data='cifar10' --nclient=10 --nclass=10 --ncpc=10 --model='MobileNetV3Small' --mode='LDP' --round=20 --epsilon=6 --sr=1 --lr=5e-2 --flr=1e-1 --physical_bs=3 --E=1
python FedAverage.py --data='cifar10' --nclient=10 --nclass=10 --ncpc=10 --model='MobileNetV3Small' --mode='LDP' --round=20 --epsilon=8 --sr=1 --lr=5e-2 --flr=1e-1 --physical_bs=3 --E=1

python FedAverage.py --data='cifar10' --nclient=10 --nclass=10 --ncpc=10 --model='MobileNetV3Small' --mode='CDP' --round=20 --epsilon=2 --sr=1 --lr=5e-2 --flr=1e-1 --physical_bs=8 --E=1
python FedAverage.py --data='cifar10' --nclient=10 --nclass=10 --ncpc=10 --model='MobileNetV3Small' --mode='CDP' --round=20 --epsilon=4 --sr=1 --lr=5e-2 --flr=1e-1 --physical_bs=8 --E=1
python FedAverage.py --data='cifar10' --nclient=10 --nclass=10 --ncpc=10 --model='MobileNetV3Small' --mode='CDP' --round=20 --epsilon=6 --sr=1 --lr=5e-2 --flr=1e-1 --physical_bs=8 --E=1
python FedAverage.py --data='cifar10' --nclient=10 --nclass=10 --ncpc=10 --model='MobileNetV3Small' --mode='CDP' --round=20 --epsilon=8 --sr=1 --lr=5e-2 --flr=1e-1 --physical_bs=8 --E=1

python log/show.py --E=1 --data='cifar10'
end=$(date +%s)
take=$(( end - start ))
echo Time taken to execute commands is ${take} seconds.


