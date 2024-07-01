<?php

function getAllArtists($conn)
{
    $stmt = $conn->query('SELECT * FROM artist');
    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}

function getArtistDetailsById($conn, $artistId)
{
    $stmt = $conn->prepare(
        'SELECT * from artist where artist_id = :artistId'
    );

    $stmt->bindParam(':artistId', $artistId, PDO::PARAM_INT);
    $stmt->execute();
    return $stmt->fetch(PDO::FETCH_ASSOC);
}
