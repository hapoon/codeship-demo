package model

import (
	"testing"
)

func TestSetName(t *testing.T) {
	u := User{
		Name: "aaa",
		Age:  20,
	}
	if err := u.SetName(""); err == nil {
		t.Fatal(err)
	}
	if err := u.SetName("bbb"); err != nil {
		t.Fatal(err)
	}
	if u.Name != "bbb" {
		t.Fatal("Setting name failed.")
	}
}
