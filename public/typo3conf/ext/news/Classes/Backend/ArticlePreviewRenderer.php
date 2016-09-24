<?php

namespace BStrauss\Typo3Demo\News\Backend;

use BStrauss\Typo3Demo\News\Domain\Model\Content;
use BStrauss\Engine\Plugin\BackendPreviewRenderer;

class ArticlePreviewRenderer extends BackendPreviewRenderer {
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

  public function render() {
    /** @var Content $content */
    $content = $this->getContent($this->contentRepository);
    $flexform = $content->getFlexform();

    $items = $this->itemRepository->findByTtContent($content->getUid());

    $this->view->assignMultiple(
        [
            'category' => $flexform['category'],
            'items' => $items,
        ]
    );
  }
}