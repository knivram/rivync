import { Card, CardHeader, CardContent, CardFooter } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Container } from '@/components/ui/container';
import { Text, Title } from '@/components/ui/text';

export default function HomePage() {
  return (
      <div>
        <header className="bg-primary text-primary-foreground p-4">
          <nav className="container mx-auto flex justify-between items-center">
            <div className="text-2xl font-bold">Rivync</div>
            <div className="space-x-4">
              <a href="#features" className="hover:underline">Funktionen</a>
              <a href="#how-it-works" className="hover:underline">Wie es funktioniert</a>
              <a href="#testimonials" className="hover:underline">Erfahrungen</a>
              <a href="#contact" className="hover:underline">Kontakt</a>
            </div>
          </nav>
        </header>

        <section className="hero bg-background py-20 text-center">
          <Container>
            <Title className="text-4xl mb-4">Vereinfachen Sie Ihr Teammanagement</Title>
            <Text className="text-lg mb-8">Die ultimative App für Trainer, Spieler und Eltern, um das Teammanagement zu vereinfachen und die Kommunikation zu verbessern.</Text>
            <Button className="bg-primary text-primary-foreground py-2 px-4 rounded">Jetzt herunterladen</Button>
          </Container>
        </section>

        <section id="features" className="py-20 bg-white">
          <Container>
            <Title className="text-3xl mb-8 text-center">Hauptfunktionen</Title>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
              <Card>
                <CardHeader>Benutzerverwaltung</CardHeader>
                <CardContent>Benutzerprofile für Trainer, Spieler und Eltern. Team-basierte Zugriffskontrolle und Profilanpassung.</CardContent>
              </Card>
              <Card>
                <CardHeader>Teammanagement</CardHeader>
                <CardContent>Erstellen und Verwalten von Teams. Hinzufügen und Entfernen von Teammitgliedern. Links für Eltern von Teammitgliedern.</CardContent>
              </Card>
              <Card>
                <CardHeader>Eventplanung</CardHeader>
                <CardContent>Planung von Trainings, Turnieren und Spielen. Automatisierte Erinnerungen und Benachrichtigungen.</CardContent>
              </Card>
              <Card>
                <CardHeader>Anwesenheitsverfolgung</CardHeader>
                <CardContent>Nachverfolgung der Anwesenheit bei verschiedenen Events.</CardContent>
              </Card>
              <Card>
                <CardHeader>Kommunikations-Tools</CardHeader>
                <CardContent>Team-Chat-Raum. Direkte Nachrichten zwischen Trainern, Spielern und Eltern. Push-Benachrichtigungen für wichtige Updates.</CardContent>
              </Card>
            </div>
          </Container>
        </section>

        <section id="how-it-works" className="py-20 bg-gray-100">
          <Container>
            <Title className="text-3xl mb-8 text-center">Wie es funktioniert</Title>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
              <Card>
                <CardHeader>Schritt 1</CardHeader>
                <CardContent>Registrieren und Profil erstellen.</CardContent>
              </Card>
              <Card>
                <CardHeader>Schritt 2</CardHeader>
                <CardContent>Team erstellen und Mitglieder hinzufügen.</CardContent>
              </Card>
              <Card>
                <CardHeader>Schritt 3</CardHeader>
                <CardContent>Events planen und Anwesenheit verfolgen.</CardContent>
              </Card>
              <Card>
                <CardHeader>Schritt 4</CardHeader>
                <CardContent>Über die integrierten Kommunikationstools in Kontakt bleiben.</CardContent>
              </Card>
            </div>
          </Container>
        </section>

        <section id="testimonials" className="py-20 bg-white">
          <Container>
            <Title className="text-3xl mb-8 text-center">Erfahrungen</Title>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
              <Card>
                <CardContent>"Rivync hat unser Teammanagement revolutioniert! Die App ist einfach zu bedienen und unglaublich praktisch." - Trainer</CardContent>
              </Card>
              <Card>
                <CardContent>"Ich liebe die Erinnerungsfunktionen und wie einfach es ist, mit meinem Team in Kontakt zu bleiben." - Spieler</CardContent>
              </Card>
              <Card>
                <CardContent>"Als Elternteil finde ich es toll, dass ich immer über die Aktivitäten meines Kindes informiert bin." - Elternteil</CardContent>
              </Card>
            </div>
          </Container>
        </section>

        <section className="py-20 bg-primary text-primary-foreground text-center">
          <Container>
            <Title className="text-3xl mb-4">Beginnen Sie noch heute mit Rivync</Title>
            <Button className="bg-white text-primary py-2 px-4 rounded">Jetzt herunterladen</Button>
          </Container>
        </section>

        <footer className="bg-gray-800 text-white py-4">
          <Container className="text-center">
            <Text>&copy; 2024 Rivync. Alle Rechte vorbehalten.</Text>
            <div className="space-x-4 mt-4">
              <a href="#contact" className="hover:underline">Kontakt</a>
              <a href="#privacy" className="hover:underline">Datenschutz</a>
              <a href="#terms" className="hover:underline">Nutzungsbedingungen</a>
            </div>
          </Container>
        </footer>
      </div>
  );
}
