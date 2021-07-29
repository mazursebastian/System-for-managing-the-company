package com.example.projekt.service;

import com.example.projekt.dto.EmployeeDto;
import com.example.projekt.dto.InstitutionDto;
import com.example.projekt.entities.Institution;
import com.example.projekt.repository.InstitutionRep;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class InstitutionService {
    private final InstitutionRep institutionRep;

    public InstitutionService(InstitutionRep institutionRep) {
        this.institutionRep = institutionRep;
    }

    public void addInstitution(InstitutionDto institutionDto) {
        Institution newInstitution = new Institution();
        newInstitution.setName(institutionDto.getName());
        newInstitution.setDateOrder(institutionDto.getDateOrder());
        newInstitution.setDescription(institutionDto.getDescription());
        institutionRep.save(newInstitution);
    }

    public Long institutionCount() {
        return institutionRep.count();
    }

    public void delete(long id) {
        institutionRep.deleteById(id);

    }

    public Optional<InstitutionDto> get(Long id) {
        return institutionRep.findById(id).stream().map(institution -> new InstitutionDto(institution.getId(), institution.getName(), institution.getDateOrder(), institution.getDescription())).findFirst();
    }

    public List<Institution> showAll() {
        return institutionRep.findAll();
    }
}
