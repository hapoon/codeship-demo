package model

import (
	"testing"
)

func TestSetName(t *testing.T) {
	u := User{
		name: "aaa",
		Age:  20,
	}
	if err := u.SetName(""); err == nil {
		t.Fatal(err)
	}
}
