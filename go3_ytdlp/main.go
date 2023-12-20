package main

import (
	"fmt"
	"os"
	"os/exec"
)

func main() {
	loop := true
	for loop {
		cmd := exec.Command("clear")
		cmd.Stdout = os.Stdout
		cmd.Run()

		fmt.Println()
		fmt.Println("1. ~ 720p")
		fmt.Println("2. ~ 1080p")
		fmt.Println("3. ~ 1440p")
		fmt.Println("4. ~ mp3")
		fmt.Println("5. ~ 2160p")
		fmt.Println("6. ~ 360p")
		fmt.Println("7. ~ 480p")
		var number string
		fmt.Scanln(&number)
		if number == "q" {
			fmt.Println("Bay bay")
			fmt.Scanln()
			break
		}
		fmt.Println("Print copy link, or press < q > and Enter to exit: ")
		var link string
		fmt.Scanln(&link)
		if link == "q" {
			fmt.Println("bay, bay")
			fmt.Scanln()
			break
		}

		var result string
		switch number {
		case "1":
			result = fmt.Sprintf("yt-dlp --format \"bestvideo[height<=720][ext=mp4]+bestaudio[ext=mp3]/best[height<=720][ext=mp4]/best[height<=720]\" \"%s\"", link)
		case "2":
			result = fmt.Sprintf("yt-dlp --format \"bestvideo[height<=1080][ext=mp4]+bestaudio[ext=m4a]/best[height<=1080][ext=mp4]/best[height<=1080]\" \"%s\"", link)
		case "3":
			result = fmt.Sprintf("yt-dlp --format \"bestvideo[height<=1440][ext=mp4]+bestaudio[ext=m4a]/best[height<=1440][ext=mp4]/best[height<=1440]\" \"%s\"", link)
		case "4":
			result = fmt.Sprintf("yt-dlp -x --audio-format mp3 \"%s\"", link)

		case "5":
			result = fmt.Sprintf("yt-dlp --format \"bestvideo[height<=2160][ext=mp4]+bestaudio[ext=m4a]/best[height<=2160][ext=mp4]/best[height<=2160]\" \"%s\"", link)
		case "6":
			result = fmt.Sprintf("yt-dlp --format \"bestvideo[height<=360][ext=mp4]+bestaudio[ext=mp3]/best[height<=360][ext=mp4]/best[height<=360]\" \"%s\"", link)
		case "7":
			result = fmt.Sprintf("yt-dlp --format \"bestvideo[height<=480][ext=mp4]+bestaudio[ext=mp3]/best[height<=480][ext=mp4]/best[height<=480]\" \"%s\"", link)
		}

		out, err := exec.Command("bash", "-c", result).Output()
		if err != nil {
			fmt.Println(err)
		}
		fmt.Println(string(out))
		fmt.Println("Video downloaded")
		fmt.Scanln()
	}
}
