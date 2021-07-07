package com.ncu.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ncu.dao.SymtomInterfaceDao;
import com.ncu.model.SymptomsAndDisease;

@Controller
public class SymtomController {

	@Autowired
	@Qualifier("symptomDao")
	private SymtomInterfaceDao symptomDaoi;

	@RequestMapping("/sympcheck")
	public String SymtomCheck(Model model) {
		List<SymptomsAndDisease> symptomsAndDisease = symptomDaoi.getSymptomTable();
		System.out.println(symptomsAndDisease);
		model.addAttribute("symptomsAndDisease", symptomsAndDisease);
		return "sympCheckHome";
	}

	@RequestMapping(value = "/searchedSymp", method = RequestMethod.GET)
	public String SearchSymptom(@RequestParam("search") String query, Model model) {
		List<SymptomsAndDisease> symptomsAndDisease = symptomDaoi.getSymptomTable();
		List<SymptomsAndDisease> neSympList = new ArrayList<>();

		String[] array = query.split(",");
		Set<String> set = new HashSet<>(Arrays.asList(array));
		Iterator<String> itr = set.iterator();
		Set<Integer> list = new HashSet<Integer>();
 
		while (itr.hasNext()) {
			String word = itr.next(); 
        	for (SymptomsAndDisease symptomsAndDisease2 : symptomsAndDisease) {
				if(symptomsAndDisease2.getDisease().trim().toLowerCase().contains(word.toLowerCase()) || 
						 symptomsAndDisease2.getSymptoms().trim().toLowerCase().contains(word.toLowerCase()) ) {
					if (!list.contains(symptomsAndDisease2.getNum())) {
						neSympList.add(symptomsAndDisease2);
						list.add(symptomsAndDisease2.getNum()); 
					}
				}
			} 
		} 
		model.addAttribute("symptomsAndDisease", neSympList);
		return "sympCheckHome";
	}
}
