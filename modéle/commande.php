<?php
class commande{
    protected $client;
    protected $nbproduit;
    protected $prix;
    public function __construct($client, $nbproduit, $prix)
    {
        $this->client = $client;
        $this->nbproduit = $nbproduit;
        $this->prix = $prix;
    }



    /**
     * Get the value of client
     */ 
    public function getClient()
    {
        return $this->client;
    }

    /**
     * Set the value of client
     *
     * @return  self
     */ 
    public function setClient($client)
    {
        $this->client = $client;

        return $this;
    }

    /**
     * Get the value of nbproduit
     */ 
    public function getNbproduit()
    {
        return $this->nbproduit;
    }

    /**
     * Set the value of nbproduit
     *
     * @return  self
     */ 
    public function setNbproduit($nbproduit)
    {
        $this->nbproduit = $nbproduit;

        return $this;
    }

    /**
     * Get the value of prix
     */ 
    public function getPrix()
    {
        return $this->prix;
    }

    /**
     * Set the value of prix
     *
     * @return  self
     */ 
    public function setPrix($prix)
    {
        $this->prix = $prix;

        return $this;
    }
}