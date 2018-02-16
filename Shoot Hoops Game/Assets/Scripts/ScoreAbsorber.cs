using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ScoreAbsorber : MonoBehaviour {

	public int score;
	// Use this for initialization
	void Start () {
		ScoreKeeper oldKeeper = FindObjectOfType<ScoreKeeper>();
		score = 1;
		if (oldKeeper){//if the object has been found (not null)
			score = oldKeeper.score;
			Destroy(oldKeeper.gameObject); //don't want duplicates of ScoreKeeper obj

		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
