# grails-3.1-bootstrap-adminlte

Example and base project that integrates Grails 3.1 and AdminLTE-2 Bootstrap Template

# Some improvments:
- The entire project has rewritten using Grails 3.1 and default bootstrap js/css which comes with default grails 3.1 project.

- This template project use a three resuable templates, you can found it at `grails-app/views/_adminlte/*.gsp`, default files: _footer.gsp, _aside.gsp, _footer.gsp.

- The layout file at `grails-app/views/layouts/adminlte.gsp` is all what you need to edit then extend to use AdminLTE template for your project.

- The `index.gsp` file uses `adminlte.gsp` template as a starting page example for your project, you can override any unusable part from the layout page.

- The `login.gsp` and `notFound.gsp` (aka 404 page) are provided as demo customized page, and they don't extends `adminlte.gsp` template.

- This template use `<h:graphicImage />` for images instead of `<img src=... />` tag.

- This template use the same Bootstrap.[css,js] & jQuery which comes with default Grails 3.1 project, so you don't need to have two version of jquery and two version of bootstrap in your assets.

- Simplified starting page to kickoff your project.

# TODO: 
- The `src` directory contains a scaffolding sources which needs to be updated for a better UI CRUD using other plugins (e.g. DataTables...).
- Add TagLib for most used AdminLTE components, HTML elements and widgets.