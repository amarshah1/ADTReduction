
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
(assert (and (= l0 Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (= l0 Nil) (is-Cons Nil) (= l2 Nil)) )
(assert (and (is-Cons Nil) (is-Cons l0) (is-Cons Nil) (= l0 l2)) )
(assert (= l1 Nil) )
(assert (is-Cons l3) )
(assert (or (= l3 Nil) (= l0 l2)) )
(assert (not (= l3 Nil)) )
(assert (and (= l3 l1) (= l1 Nil) (= l2 Nil) (is-Cons Nil)) )
(check-sat)
