# file kgcoe_exporter.py
import os
import os.path

from traitlets.config import Config
from nbconvert.exporters.pdf import PDFExporter

#-----------------------------------------------------------------------------
# Classes
#-----------------------------------------------------------------------------

class KGCOEExporter(PDFExporter):
    """
    PDF exporter using the KGCOE report template
    """

    @property
    def template_path(self):
        """
        We want to inherit from HTML template, and have template under
        `./templates/` so append it to the search path. (see next section)
        """
        return super().template_path+[os.path.join(os.path.dirname(__file__), "templates")]

    def _template_file_default(self):
        """
        We want to use the new template we ship with our library.
        """
        return 'kgcoe_jupyter_template'
