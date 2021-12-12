package com.priscella.golfproject.dao;

import com.priscella.golfproject.entity.Round;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/*
    coll. res. rel is the name of the JSON entry and the path is the url path
 */
@RepositoryRestResource(collectionResourceRel = "round", path = "round")
public interface RoundRepository extends JpaRepository<Round, Long> {
}
