<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="baa-url")
     * @Template()
     */
    public function baaAction()
    {
        return array();
    }

    /**
     * @Route("/sixpence.html", name="sixpence-url")
     * @Template()
     */
    public function sixpenceAction()
    {
        return array();
    }
    /**
     * @Route("/hush.html", name="hush-url")
     * @Template()
     */
    public function hushAction()
    {
        return array();
    }

}
