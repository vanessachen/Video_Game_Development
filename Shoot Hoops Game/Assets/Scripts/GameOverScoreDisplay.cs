using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameOverScoreDisplay : MonoBehaviour {

	ScoreAbsorber scoreAbsorber;
	Text text;

	// Use this for initialization
	void Start () {
		scoreAbsorber = FindObjectOfType<ScoreAbsorber>();
		text = GetComponent<Text>();
	}
	
	// Update is called once per frame
	void Update () {
		//text contains a field text that contains a string text
		//getting score from 
		text.text = "Score: " + scoreAbsorber.score;
	}
}
