package com.example.gccoffee.model;

import org.junit.jupiter.api.Test;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.junit.jupiter.api.Assertions.*;

class EmailTest {

    @Test
    public void testInvalidEmail() {
        assertThrows(IllegalArgumentException.class, () ->new Email("accccc"));

    }

    @Test
    public void testValidEmail() {
        Email email = new Email("hello@gamil.com");
        assertTrue(email.getAddress().equals("hello@gamil.com"));
    }

    @Test
    public void testEqEmail() {
        Email email = new Email("hello@gmail.com");
        Email email2 = new Email("hello@gmail.com");
        assertTrue(email.getAddress().equals(email2));
    }

}