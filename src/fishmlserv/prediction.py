from fishmlserv.model.manager import get_model_path
from sklearn.neighbors import KNeighborsClassifier
import pickle
import fire

def prediction(l, w):
    with open(get_model_path(), "rb") as f:
        fish_model = pickle.load(f)

    prd = fish_model.predict([[l, w]])[0]

    if prd == 1:
        return "도미"
    else:
        return "빙어"

def main():
    fire.Fire(prediction)
