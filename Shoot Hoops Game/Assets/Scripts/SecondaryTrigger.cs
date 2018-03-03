using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SecondaryTrigger : MonoBehaviour {
	//going to make the two triggers work together
	
	Collider expectedCollider;

	public void ExpectCollider(Collider collider){
		expectedCollider = collider;
	}

	void OnTriggerEnter(Collider otherCollider)
	{
		//can only increment score if the collider that passes through second trigger is the expected collider
		//expected collider is the collider that passes through the first trigger
		if (otherCollider == expectedCollider){
			ScoreKeeper scoreKeeper = FindObjectOfType<ScoreKeeper>();
			scoreKeeper.IncrementScore(1);
		}
	}
}
