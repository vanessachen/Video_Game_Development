using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BallBounceSound : MonoBehaviour {

	void OnCollisionEnter(Collision collision)
	{
		//play audio source attached to obj
		AudioSource source = GetComponent<AudioSource>();
		source.Play();
	}
}
