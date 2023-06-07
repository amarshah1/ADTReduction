
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
(assert (is-Cons Nil) )
(assert (or (= l3 Nil) (= l0 l3) (= l1 Nil) (= l1 Nil)) )
(assert (and (= l1 l2) (is-Cons l3)) )
(assert (not (= l3 Nil)) )
(assert (and (= l2 Nil) (= l3 Nil) (is-Cons l3) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (is-Cons Nil)) )
(assert (is-Nil l2) )
(check-sat)