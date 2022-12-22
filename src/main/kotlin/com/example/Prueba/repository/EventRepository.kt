package com.example.prueba.repository


import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository
import org.w3c.dom.events.Event

@Repository
interface EventRepository  : JpaRepository<Event, Long?> {
    fun findById(id: Long?): Event?
}