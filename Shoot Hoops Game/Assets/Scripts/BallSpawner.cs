using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BallSpawner : MonoBehaviour {
	public GameObject ballPrefab;
	public int maxFallDistance = -20;
	public int ballSpeed = 9; 

	// Use this for initialization
	void Start () {
	}

	Rigidbody createBall (){
		//when game starts, make an instance of the object
		GameObject instance = Instantiate (ballPrefab); //creates a new instance of the ballPrefab
		Rigidbody rb = instance.GetComponent<Rigidbody> (); //get the ball's rigidbody component
		//rb.velocity = Vector3.forward * 9.0f; //Vector3(0,0,1)
		return rb;
	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown (KeyCode.UpArrow)) {
			Rigidbody rb = createBall (); //create a new instance of the ball each time
			rb.velocity = Vector3.forward * ballSpeed;
			print ("I am moving forward");
			//if (rb.position.y >= maxFallDistance){
				//Destroy(gameObject);
				//print ("Destroying ball now 2");

			//}
		} 
		if (Input.GetKeyDown (KeyCode.DownArrow)) {
			Rigidbody rb = createBall ();
			rb.velocity = Vector3.back * ballSpeed;
			print ("I am moving backwards");
		} 
		if (Input.GetKeyDown (KeyCode.LeftArrow)) {
			Rigidbody rb = createBall ();
			rb.velocity = Vector3.left * ballSpeed;
			print ("I am moving left");
		} 
		if (Input.GetKeyDown (KeyCode.RightArrow)) {
			Rigidbody rb = createBall ();
			rb.velocity = Vector3.right * ballSpeed;
			print ("I am moving right");
		} 
	}
}
