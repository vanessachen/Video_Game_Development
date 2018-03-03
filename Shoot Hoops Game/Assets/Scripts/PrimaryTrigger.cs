using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PrimaryTrigger : MonoBehaviour {

	void OnTriggerEnter(Collider collider)
	{
		//calling the secondary trigger from the primary trigger
		SecondaryTrigger trigger = GetComponentInChildren<SecondaryTrigger>();
		trigger.ExpectCollider(collider);
	}
}
