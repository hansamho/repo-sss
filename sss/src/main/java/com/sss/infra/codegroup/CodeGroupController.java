package com.sss.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupService service;
	
	@RequestMapping(value = "/codeGroupXdmList")
    public String codeGroupXdmList(@ModelAttribute("vo") CodeGroupVo vo,Model model) throws Exception {
       
       model.addAttribute("list", service.selectList(vo));
        return "codeGroupXdmList"; 
    }
}
