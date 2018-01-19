using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerControl : MonoBehaviour {

	public Vector3 player = new Vector3 (0.0f, 0.0f, 0.0f);
	public Vector3 home = new Vector3 (0.0f,10.0f,0.0f);
	//public Vector3 distanceToHome = new Vector3 (0.0f,10.0f,0.0f);
	public bool isHome = false;

	// Use this for initialization
	void Start () {
		print ("Welcome to Go Home Game! This is a simple game I created to practice using C#");
		print ("Your current location is: " + player);
	}
	
	// Update is called once per frame
	void Update () {
		transform.position = player;
		if (isHome == false){
			if (Input.GetKeyDown(KeyCode.UpArrow)){
				//transform.position.y += 1.0f;
				player.y += 1.0f;
			}
			if (Input.GetKeyDown(KeyCode.DownArrow)){
				//transform.position.y -= 1.0f;
				player.y -= 1.0f;
			}
			if (Input.GetKeyDown(KeyCode.LeftArrow)){
				//transform.position.x -= 1.0f;
				player.x -= 1.0f;
			}
			if (Input.GetKeyDown(KeyCode.RightArrow)){
				//transform.position.x += 1.0f;
				player.x += 1.0f;
			}
			if (Input.GetKeyDown(KeyCode.Space)){
				//transform.position.z += 1.0f;
				player.z += 1.0f;
			}
			if (Input.GetKeyDown(KeyCode.D)){
				//transform.position.z -= 1.0f;
				player.z -= 1.0f;
			}
			print ("Your current location is: " + player);
			//distanceToHome = Mathf.Sqrt ((transform.position.x) ^ 2 + (transform.position.y) ^ 2 + (transform.position.z) ^ 2);
			float distanceToHome = (player.magnitude-home.magnitude);
			print ("Distance between home and your position is: " + (distanceToHome)); 
			if (distanceToHome == 0) {
				isHome = true;
			}
		}
		else if (isHome){
			print ("You have reached home! Thanks for playing!");

		}
			
	}
}
