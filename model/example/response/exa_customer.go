package response

import "github.com/fastdevops/coreapi/model/example"

type ExaCustomerResponse struct {
	Customer example.ExaCustomer `json:"customer"`
}
