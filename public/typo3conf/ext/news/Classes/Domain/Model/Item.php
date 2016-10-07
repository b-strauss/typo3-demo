<?php
namespace BStrauss\Typo3Demo\News\Domain\Model;

use BStrauss\Engine\Domain\Model\AbstractItem;

class Item extends AbstractItem {
  /**
   * @var \BStrauss\Typo3Demo\News\Domain\Model\Content
   */
  protected $ttContent;

  /**
   * @var string
   */
  protected $title;

  /**
   * @var string
   */
  protected $text;

  /**
   * @var \TYPO3\CMS\Extbase\Domain\Model\FileReference
   */
  protected $image;

  /**
   * @var boolean
   */
  protected $inverted;

  /**
   * @var string
   */
  protected $size;

  ///**
  // * @var string
  // */
  //protected $link;

  /**
   * @return \BStrauss\Typo3Demo\News\Domain\Model\Content
   */
  public function getTtContent() {
    return $this->ttContent;
  }

  /**
   * @param \BStrauss\Typo3Demo\News\Domain\Model\Content $ttContent
   */
  public function setTtContent($ttContent) {
    $this->ttContent = $ttContent;
  }

  /**
   * @return string
   */
  public function getTitle() {
    return $this->title;
  }

  /**
   * @param string $title
   */
  public function setTitle($title) {
    $this->title = $title;
  }

  /**
   * @return string
   */
  public function getText() {
    return $this->text;
  }

  /**
   * @param string $text
   */
  public function setText($text) {
    $this->text = $text;
  }

  /**
   * @return \TYPO3\CMS\Extbase\Domain\Model\FileReference
   */
  public function getImage() {
    return $this->image;
  }

  /**
   * @param \TYPO3\CMS\Extbase\Domain\Model\FileReference $image
   */
  public function setImage($image) {
    $this->image = $image;
  }

  /**
   * @return boolean
   */
  public function isInverted() {
    return $this->inverted;
  }

  /**
   * @param boolean $inverted
   */
  public function setInverted($inverted) {
    $this->inverted = $inverted;
  }

  /**
   * @return string
   */
  public function getSize() {
    return $this->size;
  }

  /**
   * @param string $size
   */
  public function setSize($size) {
    $this->size = $size;
  }
}