package com.priscella.golfproject.entity;

import lombok.Data;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name="golf_round")
@Data
public class Round {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long id;

    @Column(name="date")
    @CreationTimestamp
    private LocalDate date;

    @Column(name="course")
    private String course;

    @Column(name="weather")
    private String weather;

    @Column(name="score")
    private int score;

    @Column(name="friends")
    private String friends;

    @Column(name="strangers")
    private String strangers;

    @Column(name="price")
    private double price;

    @Column(name="course_rating")
    private double courseRating;

    @Column(name="slope_rating")
    private double slopeRating;

    @Column(name="personal_rating")
    private double personalRating;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "round")
    private List<Hole> holes;

}
