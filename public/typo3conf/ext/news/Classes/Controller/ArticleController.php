<?php
namespace BStrauss\Typo3Demo\News\Controller;

use BStrauss\Typo3Demo\News\Domain\Model\Content;
use BStrauss\Engine\Controllers\AbstractActionController;

class ArticleController extends AbstractActionController {
  /**
   * @var \BStrauss\Typo3Demo\News\Domain\Repository\ContentRepository
   * @inject
   */
  protected $contentRepository;

  /**
   * @var \BStrauss\Typo3Demo\News\Domain\Repository\ItemRepository
   * @inject
   */
  protected $itemRepository;

  public function indexAction() {
    /** @var Content $content */
    $content = $this->getContent($this->contentRepository);
    $flexform = $content->getFlexform();

    $items = $this->itemRepository->findByTtContent($content->getUid());

    $this->view->assignMultiple(
        [
            'uid' => $content->getUid(),
            'category' => $flexform['category'],
            'items' => $items,
        ]
    );
  }
}