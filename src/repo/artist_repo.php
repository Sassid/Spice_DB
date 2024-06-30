<?php

function getAllArtists($conn) {
    $stmt = $conn->query('SELECT * FROM artist');
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}