from reportlab.lib.pagesizes import letter,A4
from reportlab.platypus import SimpleDocTemplate, Paragraph
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib.enums import TA_CENTER
from django.contrib.auth.models import User


class MyPrint:
	def __init__(self,buffer,pagesize):
		self.buffer=buffer
		if pagesize == 'A4':
			self.pagesize=A4
		elif pagesize == 'Letter':
			self.pagesize=letter
		self.width,self.height=self.pagesize

	def print_users(self):
		buffer=self.buffer
		doc = SimpleDocTemplate(buffer,
								rightMargin=72,
								leftMargin=72,
								topMargin=72,
								bottomMargin=72,
								pagesize=self.pagesize)
		elements=[]
		styles = getSampleStyleSheet()
		styles.add(ParagraphStyle(name='centered',alignment=TA_CENTER))

		users = User.objects.all()

		for i, user in enumerate(users):
			elements.append(Paragraph(user.get_full_name(),styles['Normal']))
		doc.build(elements)

		pdf = buffer.getvalue()
		buffer.close()
		return pdf


