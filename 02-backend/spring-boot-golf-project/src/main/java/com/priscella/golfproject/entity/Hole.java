package com.priscella.golfproject.entity;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity
@Table(name="golf_hole")
@Getter
@Setter
public class Hole {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;


    @ManyToOne
    @JoinColumn(name = "round_id", nullable = false)
    private Round round;

    @Column(name = "hole_number")
    private int holeNumber;

    @Column(name = "par")
    private int par;

    @Column(name = "hole_length")
    private int holeLength;

    @Column(name = "tee_shot")
    private boolean teeShot;

    @Column(name = "green_in_regulation")
    private boolean greenInRegulation;

    @Column(name = "putts")
    private int putts;

    @Column(name = "SCORE")
    private int score;

}
