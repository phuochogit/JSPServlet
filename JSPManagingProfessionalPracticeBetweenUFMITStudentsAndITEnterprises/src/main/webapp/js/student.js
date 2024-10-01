const mdlContactAdmin = document.getElementById('mdlContactAdmin')
if (mdlContactAdmin) {
  mdlContactAdmin.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    const recipient = button.getAttribute('data-bs-whatever')
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.

    // Update the modal's content.
    const modalTitle = mdlContactAdmin.querySelector('.modal-title')
    const modalBodyInput = mdlContactAdmin.querySelector('.modal-body input')

    modalTitle.textContent = `New message to ${recipient}`
    modalBodyInput.value = recipient
  })
}