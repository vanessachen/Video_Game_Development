using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LevelManager : MonoBehaviour {

	public float timeTillNextLevel = 5.0f; //want default for time to not progress

	// Use this for initialization
	void Start () {

	}
	
	// Update is called once per frame
	void Update () {
		if (Input.GetKeyDown(KeyCode.Space)){
			LoadNextScene();
		}
		if (timeTillNextLevel > 0){ //only if there is some time till nextl level do we check 
			timeTillNextLevel -= Time.deltaTime; //tells us num of secs this frame has taken
			if (timeTillNextLevel < 0){
				LoadNextScene();
			}
		}
	}

	public void LoadNextScene(){
		int currentIndex = SceneManager.GetActiveScene().buildIndex;
		SceneManager.LoadScene(currentIndex + 1); //load next scene
	}

	public void LoadPreviousScene(){
		int currentIndex = SceneManager.GetActiveScene().buildIndex;
		SceneManager.LoadScene(currentIndex - 1); //load previous scene
	}
}
