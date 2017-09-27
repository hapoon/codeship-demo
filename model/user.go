package model

import (
	"fmt"
)

// User has information of name,age...
type User struct {
	Name string
	Age  uint
}

// SetName changes user's name.
func (u *User) SetName(name string) error {
	if len(name) == 0 {
		return fmt.Errorf("name is empty")
	}
	u.Name = name
	return nil
}
