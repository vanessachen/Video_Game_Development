using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreKeeper : MonoBehaviour {

	public int score = 0;
	//public int addScore = 2;

	public void IncrementScore(int amount){
		score = score + amount;
		print ("This is your current score: " + score);
	}


	// Use this for initialization
	void Start () {
		//want score data to persist between scenes
		DontDestroyOnLoad(gameObject);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
