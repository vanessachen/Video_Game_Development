using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ScoreDisplay : MonoBehaviour {
	
	ScoreKeeper scoreKeeper;
	Text text;

	// Use this for initialization
	void Start () {
		scoreKeeper = FindObjectOfType<ScoreKeeper>();
		text = GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
		//text contains a field text that contains a string text
		//getting score from 
		text.text = "Score: " + scoreKeeper.score;
	}
}
