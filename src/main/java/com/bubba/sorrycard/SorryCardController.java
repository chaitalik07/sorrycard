package com.bubba.sorrycard;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class SorryCardController {

    @GetMapping("/sorry")
    public String showSorryCard() {
        return "sorry";  // this will render sorry.html from templates
    }
}
