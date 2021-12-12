package com.priscella.golfproject.dto;

import com.priscella.golfproject.entity.Hole;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

public class RoundDTO {

    public class Round {


        private Long id;
        private LocalDate date;
        private String course;
        private String weather;
        private int score;
        private String friends;
        private String strangers;
        private double price;
        private double courseRating;
        private double slopeRating;
        private double personalRating;
        private List<Hole> holes;



}
