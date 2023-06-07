
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
(assert (is-Cons Nil) )
(assert (or (is-Cons Nil) (is-Cons l3) (= l0 Nil) (= l1 l3)) )
(assert (or (is-Cons Nil) (= l0 Nil)) )
(assert (and (is-Cons Nil) (is-Nil l1) (= l1 Nil) (= l3 Nil)) )
(assert (not (is-Nil l2)) )
(assert (and (= l1 l2) (= l1 l2) (= l0 l0)) )
(assert (is-Cons Nil) )
(check-sat)