package com.crud.board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@Controller
public class HomeController {
    @RequestMapping(value = "/")
    public String home(Model model) {
        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        String formattedDateTime = now.format(formatter);

        model.addAttribute("serverTime", formattedDateTime);
        return "home";
    }
}
