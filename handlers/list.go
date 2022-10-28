package handlers

import (
	"encoding/json"
	"github.com/esirangelomub/go-api-rest/models"
	"log"
	"net/http"
)

func List(w http.ResponseWriter, request *http.Request) {

	todos, err := models.GetAll()
	if err != nil {
		log.Printf("Erro ao obter registros: %v", err)
	}

	w.Header().Add("Content-Type", "application/json")
	json.NewEncoder(w).Encode(todos)
}
