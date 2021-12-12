package com.priscella.golfproject.dao;

import com.priscella.golfproject.entity.Hole;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

/*
 <entity type, primary id key type>
 */
@RepositoryRestResource(collectionResourceRel = "hole", path = "hole")
public interface HoleRepository extends JpaRepository<Hole, Long> {

}
