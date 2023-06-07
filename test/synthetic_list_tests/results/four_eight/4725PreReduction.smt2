
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (= l1 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Cons Nil)) )
(assert (= l1 Nil) )
(assert (and (= l2 Nil) (= l1 l2) (= l1 l3)) )
(assert (is-Cons l3) )
(assert (or (= l1 Nil) (is-Cons Nil)) )
(assert (and (is-Cons Nil) (= l2 Nil) (= l1 Nil)) )
(check-sat)
