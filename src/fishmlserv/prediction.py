from fishmlserv.model.manager import get_model_path
from sklearn.neighbors import KNeighborsClassifier
import pickle
import fire

def prediction(l, w):
    """
    물고기 종류 판별기

    물고기 길이(l)와 무게(w) 기반으로 종류를 예측
    
    Args:
        l (float): 물고기 길이(cm)
        w (float): 물고기 무게(g)
    """
    with open(get_model_path(), "rb") as f:
        fish_model = pickle.load(f)

    prd = fish_model.predict([[l, w]])[0]

    if prd == 1:
        return "도미"
    else:
        return "빙어"

def main():
    fire.Fire(prediction)
