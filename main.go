package main

import (
	"fmt"
	"net/http"
)

const PORT = "3000"

func main() {

	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("Hello, Argonaut!"))
	})

	fmt.Println("Serving on " + PORT)
	http.ListenAndServe(":"+PORT, nil)
}
