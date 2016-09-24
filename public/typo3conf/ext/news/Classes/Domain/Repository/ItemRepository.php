<?php
namespace BStrauss\Typo3Demo\News\Domain\Repository;

use TYPO3\CMS\Extbase\Persistence\Generic\Typo3QuerySettings;
use TYPO3\CMS\Extbase\Persistence\Repository;

class ItemRepository extends Repository {
  /**
   * @var array
   */
  protected $defaultOrderings = [
      'sorting' => 'ASC',
  ];

  public function initializeObject() {
    /** @var Typo3QuerySettings $querySettings */
    $querySettings = $this->objectManager->get(Typo3QuerySettings::class);
    $querySettings->setRespectStoragePage(false);

    $this->setDefaultQuerySettings($querySettings);
  }
}