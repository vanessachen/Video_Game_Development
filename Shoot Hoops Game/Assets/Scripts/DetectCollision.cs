﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DetectCollision : MonoBehaviour {


	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnCollisionEnter(Collision collision){//passing a collision object
		ScoreKeeper scoreKeeper = FindObjectOfType<ScoreKeeper>();
		scoreKeeper.IncrementScore();

	}
}
