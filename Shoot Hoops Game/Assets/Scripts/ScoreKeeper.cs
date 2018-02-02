using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreKeeper : MonoBehaviour {

	public int score = 0;
	public int addScore = 2;

	public void IncrementScore(){
		score = score + addScore;
		print ("This is your current score: " + score);
	}


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
