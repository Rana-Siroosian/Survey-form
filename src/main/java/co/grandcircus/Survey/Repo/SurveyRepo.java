package co.grandcircus.Survey.Repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import co.grandcircus.Survey.Objects.Survey;

public interface SurveyRepo extends JpaRepository<Survey, Long> {

}
