package model;
import lombok.*;
import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.Formula;

import javax.persistence.*;
import java.time.LocalDate;
import java.util.Set;
@Entity
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Owner {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String firstName;
    private String lastName;
    private LocalDate birthDate;

    @Formula("(year(now())-year(birthDate))")
    private Integer age;

    @OneToMany(mappedBy = "owner", fetch = FetchType.EAGER, cascade = CascadeType.REMOVE)
    @Cascade(value = org.hibernate.annotations.CascadeType.REMOVE)
    @EqualsAndHashCode.Exclude
    private Set<Pet> pets;
}