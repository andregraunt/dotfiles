package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
	for {
		cmd := exec.Command("clear")
		cmd.Stdout = os.Stdout
		cmd.Run()

		fmt.Println("Hi, enter link: ")
		var link string
		fmt.Scanln(&link)

		result, err := exec.Command("yt-dlp", "--format", "bv*[ext=mp4]+ba[ext=mp3]/b[ext=mp4]", link).Output()
		if err != nil {
			fmt.Println(err)
		}

		fmt.Println(string(result))
		fmt.Println("Video downloaded")
	}
}
