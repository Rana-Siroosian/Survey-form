package co.grandcircus.Survey.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import co.grandcircus.Survey.Objects.Survey;


public interface SurveyRepo extends JpaRepository<Survey,Long>{

}
