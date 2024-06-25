import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    const noticeElement = this.element;

    if (noticeElement) {
      setTimeout(() => {
        noticeElement.classList.add('notice-hide');
      }, 2000); // 2 second ka delay idhr se set hoga

      noticeElement.addEventListener('transitionend', () => {
        if (noticeElement.classList.contains('notice-hide')) {
          noticeElement.style.display = 'none';
        }
      });
    }
  }
}
