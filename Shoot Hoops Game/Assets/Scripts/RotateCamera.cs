using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateCamera : MonoBehaviour {

	public float mouseSpeed = 3.0f;
	 //Use this for initialization
	void Start () {
		//Transform t = GetComponent<Transform> (); //name a var t that gets the transform component of the camera
		//transform var is a var that has already been created - basically you don't need the line above
		//transform.rotation = Quaternion.Euler(0,90,0); //set the rotation property to turn 0 degrees in one axis, 90 in another, and 0 in the third
	}
	
	// Update is called once per frame
	void Update () {
		//transform.rotation = transform.rotation * Quaternion.Euler (0,1,0);
		float mouseX = Input.GetAxis("Mouse X");
		transform.rotation = transform.rotation * Quaternion.Euler (0, mouseX*mouseSpeed, 0); //must multiply Quaternion to get rotation
	
		float mouseY = Input.GetAxis("Mouse Y"); //we just want to tilt the 'head' of the player 

		Camera camera = GetComponentInChildren<Camera>(); //creating a var 'camera' of type Camera, and getting the child component of the player (which is the camera)
		//.rotation is relative to the entire game, not to the camera - we want to modify local location 
		camera.transform.localRotation = camera.transform.localRotation * Quaternion.Euler (-mouseY*mouseSpeed,0,0);//moving camera head based on camera rotation
	}



//	public GameObject ballPrefab;
//	public Transform cameraTarget; 
//	public int cameraDistance = -10; //or else positive will be away from the ball
//	public float cameraLift = 1.5f; //on the y-axis
//	public Vector3 move = new Vector3 (0.0f,0.0f,0.0f);
//
//	void LateUpdate () //LateUpdate is same as Update, but this function is called after all the other game objects are called
//	{
//		//position of the object  (camera) is now the target's position
//		GameObject instance = Instantiate (ballPrefab); //creates a new instance of the ballPrefab
//		Transform t = instance.GetComponent<Transform> ();
//		move = new Vector3 (0,cameraLift,cameraDistance);
//		transform.position = t.position + move; //vector3 controls it in 3 dimensions, so this is in reference of the ball, not at ball
//		transform.LookAt (cameraTarget); 
//		//this is something unity made so that it is easy for one object to look at another
//	}

}